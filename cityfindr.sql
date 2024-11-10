CREATE DATABASE cityfindr;

USE cityfindr;

CREATE TABLE user (
    userId INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    passwordHash VARCHAR(255) NOT NULL,
    streetAddress VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postalCode VARCHAR(20),
    country VARCHAR(100)
);

CREATE TABLE userProfile (
    userId INT NOT NULL, 
    preferences JSON NOT NULL,
    FOREIGN KEY (userId) REFERENCES user(userId)
);

CREATE TABLE organizations (
    organizationId INT AUTO_INCREMENT PRIMARY KEY,
    timeOfMeetings TIMESTAMP NOT NULL,
    streetAddress VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postalCode VARCHAR(20),
    country VARCHAR(100),
    pictureLinks JSON NULL,
    description TEXT,
    phoneNumber VARCHAR(20),
    email VARCHAR(100),
    website VARCHAR(255),
    establishedDate DATE,
    socialMediaLinks JSON NULL,
    rating TINYINT,  -- Changed from INT(1) to TINYINT
    status ENUM('Active', 'Inactive', 'Suspended')
);

CREATE TABLE events (
    eventId INT AUTO_INCREMENT PRIMARY KEY,
    createdBy INT NOT NULL, 
    organizationId INT NULL,
    timeOfEvent TIMESTAMP NOT NULL,
    streetAddress VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    postalCode VARCHAR(20),
    country VARCHAR(100),
    pictureLinks JSON NULL,
    description TEXT,
    phoneNumber VARCHAR(20),
    email VARCHAR(100),
    website VARCHAR(255),
    socialMediaLinks JSON NULL,
    rating TINYINT,  -- Changed from INT(1) to TINYINT
    FOREIGN KEY (organizationId) REFERENCES organizations(organizationId),
    FOREIGN KEY (createdBy) REFERENCES user(userId)
);

CREATE TABLE userEventParticipation (
    userId INT NOT NULL,
    eventId INT NOT NULL,
    PRIMARY KEY (userId, eventId),
    FOREIGN KEY (userId) REFERENCES user(userId),
    FOREIGN KEY (eventId) REFERENCES events(eventId)
);

CREATE TABLE userOrganizationMembership (
    userId INT NOT NULL,
    organizationId INT NOT NULL,
    PRIMARY KEY (userId, organizationId),
    FOREIGN KEY (userId) REFERENCES user(userId),
    FOREIGN KEY (organizationId) REFERENCES organizations(organizationId)
);
