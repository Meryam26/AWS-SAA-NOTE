## AWS Certified Solutions Architect - Associate Study Note

### Table of Contents
* [Security, Identity & Compliance](#security-identity-compliance)
  * [IAM](#iam)
* [Network & Content Delivery](#network-contect-delivery)
  * [Route53](#route53)
  * [VPC](#vpc)
* [Compute](#compute)
  * [EC2](#ec2)
  * [Lambda](#lambda)
* [Storage](#storage)
  * [S3](#s3)
* [Databases](#databases)
  * [RDS](#rds)
  * [DynamoDB](#dynamodb)
  * [RedShift](#redshift)
* [AWS Global Infrastructure](#aws-global-infrastructure)
---

### AWS Global Infrastructure
 * A **Region** is a physical location in the world which consists of two or more Availability Zones (AZ's)
 * An **AZ** is one or more discrete data centers, each with redundant power, networking and connectivity, housed in separate facilities.
 * **Edge Locations** are endpoints for AWS which are used for caching contect. Typically this consists of CloudFront, Amazon's Content Delivery Network (CDN).

Region (>2 AZs) > Availability Zone > Edge Locations (caching content, CloudFront - CDN)

---

### IAM
* IAM - Identity Access Management
    * Users - End Users such as people, employees of an organization etc.
    * Groups - A collection of users. Each user in the group will inherit the permissions of the group.
    * Policies - Polices are made up of documents, called Policy documents. These documents are in a format called JSON and they give permissions as to what a User/Group/Role is able to do.
    * Roles - You create roles and then assign them to AWS Resources.

* IAM is **universal**. It does not apply to regions at this time.
* New Users have **NO permissions** when first created.
* New Users are assigned **Access Key ID** & **Secret Access Keys** when first created.

---

### S3
* S3 is **Object-based**. Objects consist of the following:
    * Key: Name of the object
    * Value: Data and is made up of a sequence of bytes
    * Version ID: Imporant for versioning
    * Metadata: Data about data you are storing
    * Subresources (Accss Control Lists & Torrent)
* Files can be from 9 Bytes to 5 TB.
* There is unlimited storage.
* Files are stored in **Buckets**.
* S3 is a **universal namespace**. That is, names must be unique globally.
* Storage Classes
    1. S3 Standard
    2. S3 - IA (Infrequently Accessed): Lower fee than S3, charged a retrieval fee.
    3. S3 One Zone - IA: do not require the multiple Availability Zone data resilience. **RRS/reduce redundancy storage**
    4. S3 - Intelligent Tiering: Machine learning
    5. S3 Glacier: Retrieval times configurable from minutes to hours.
    6. S3 Glacier Deep Archive: Lowest-cost storage class where a retrieval time of 12 hours is acceptable. Request and come back 12 hours later.
* Charge
    * Storage
    * Requests
    * Storage Management Pricing
    * Transfer Acceleration: CloudFront's globally distributed edge locations.
    * Cross Region Replication Pricing
**FAQ**

---


