using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace SSISUtilityLib_CSharp
{
    public class DataUtilities
    {
        public static bool IsValidUSPostalCode(string PostalCode)
		{
            return Regex.IsMatch(PostalCode, "^[0-9]{5}(-[0-9]{4})?$");
		}
    }
}
