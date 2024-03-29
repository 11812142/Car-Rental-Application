﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace PROD.Models
{
    public class CustModel
    {
        public int Customerid
        {
            get;
            set;
        }
        [Required]
        public string CustomerName
        {
            get;
            set;
        }
        [Required]
        [DataType(DataType.EmailAddress)] 
        public string Email
        {
            get;
            set;
        }
        [Required]
        [DataType(DataType.Password)]
        [RegularExpression(@"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$", ErrorMessage = "Password should contain 8 characters,one uppercase,one lowercase,one special characters atleast")]
        public string Password
        {
            get;
            set;
        }
        [Required]
        [NotMapped] // Does not effect with your database
        [Compare("Password")]
        [DataType(DataType.Password)]
        public string ConfirmPassword
        {
            get;
            set;
        }
        [Required]
        public int LoyaltyPoints
        {
            get;
            set;
        }
    }
    
    public class ForgotPassword
    {
        [DataType(DataType.EmailAddress)]
        public string Email
        {
            get;
            set;
        }
        [DataType(DataType.Password)]
        [RegularExpression(@"(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$", ErrorMessage = "Password should contain 8 characters,one uppercase,one lowercase,one special characters atleast")]
        public string Password
        {
            get;
            set;
        }
        [DataType(DataType.Password)]
        [NotMapped]
        [Compare("Password")]
        public string ConfirmPassword
        {
            get;
            set;

        }
    }

   
}