-- Inserts sample data into the course table
INSERT INTO course (course_name, course_description, credits) VALUES
('Classical Mechanics', 'An in-depth study of Newtonian mechanics, focusing on forces, motion, and energy.', 15),
('Electromagnetism', 'Covers electric and magnetic fields, circuits, Maxwell\'s equations, and electromagnetic waves.', 15),
('Quantum Mechanics', 'Introduction to quantum mechanics, covering wave-particle duality, uncertainty principle, and Schrödinger\'s equation.', 15),
('Thermodynamics', 'Explores the laws of thermodynamics, heat transfer, and energy conservation in physical systems.', 15),
('Optics', 'A study of light, including wave optics, reflection, refraction, diffraction, and polarization.', 15),
('Statistical Mechanics', 'Examines the statistical behavior of systems with large numbers of particles, leading to thermodynamic laws.', 15),
('Nuclear Physics', 'Covers the structure of the nucleus, radioactivity, nuclear reactions, and applications in energy and medicine.', 15),
('Relativity', 'An exploration of Einstein\'s theory of relativity, focusing on special and general relativity concepts.', 15),
('Solid State Physics', 'Studies the properties of solid materials, focusing on crystal structure, band theory, and conductivity.', 15),
('Astrophysics', 'Examines celestial phenomena, stellar evolution, and the fundamental principles of the universe.', 15);
SELECT * FROM course;