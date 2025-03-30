/*
  # Job Applications Schema

  1. New Tables
    - `job_positions`
      - `id` (uuid, primary key)
      - `title` (text)
      - `description` (text)
      - `location` (text)
      - `type` (text)
      - `created_at` (timestamp)
    
    - `job_applications`
      - `id` (uuid, primary key)
      - `position_id` (uuid, foreign key)
      - `name` (text)
      - `email` (text)
      - `phone` (text)
      - `experience` (integer)
      - `cover_letter` (text)
      - `resume_url` (text)
      - `status` (text)
      - `created_at` (timestamp)

  2. Security
    - Enable RLS on both tables
    - Add policies for job positions to be readable by anyone
    - Add policies for job applications to be readable only by the applicant
*/

-- Create job positions table
CREATE TABLE IF NOT EXISTS job_positions (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  description text NOT NULL,
  location text NOT NULL,
  type text NOT NULL,
  created_at timestamptz DEFAULT now()
);

-- Create job applications table
CREATE TABLE IF NOT EXISTS job_applications (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  position_id uuid REFERENCES job_positions(id),
  name text NOT NULL,
  email text NOT NULL,
  phone text NOT NULL,
  experience integer NOT NULL,
  cover_letter text NOT NULL,
  resume_url text NOT NULL,
  status text NOT NULL DEFAULT 'pending',
  created_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE job_positions ENABLE ROW LEVEL SECURITY;
ALTER TABLE job_applications ENABLE ROW LEVEL SECURITY;

-- Policies for job positions
CREATE POLICY "Job positions are viewable by everyone"
  ON job_positions
  FOR SELECT
  TO public
  USING (true);

-- Policies for job applications
CREATE POLICY "Users can insert their own applications"
  ON job_applications
  FOR INSERT
  TO public
  WITH CHECK (true);

CREATE POLICY "Users can view their own applications"
  ON job_applications
  FOR SELECT
  TO authenticated
  USING (auth.jwt() ->> 'email' = email);