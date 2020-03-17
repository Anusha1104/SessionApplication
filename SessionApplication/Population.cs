using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SessionApplication
{
    public class Population
    {
        int applicationId;
        int memberId;
        string firstName;
        string middleName;
        string lastName;
        string suffix;
        DateTime dOB;
        string gender;

        public int ApplicationId { get => applicationId; set => applicationId = value; }
        public int MemberId { get => memberId; set => memberId = value; }
        public string FirstName { get => firstName; set => firstName = value; }
        public string MiddleName { get => middleName; set => middleName = value; }
        public string LastName { get => lastName; set => lastName = value; }
        public string Suffix { get => suffix; set => suffix = value; }
        public DateTime DOB { get => dOB; set => dOB = value; }
        public string Gender { get => gender; set => gender = value; }
    }
}