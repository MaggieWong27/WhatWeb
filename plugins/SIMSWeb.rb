##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "SIMSWeb" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-05-31
version "0.1"
description "SIMSWeb (Service Information Management System) is a web server which gives your dealers and/or customers access to their accounts, history and other account details via a standard web browser. - Homepage: http://simsware.com/products/software-simsweb.htm"

# Google results as at 2011-05-31 #
# 6 for intitle:"SIMSWeb Login"

# Dorks #
dorks [
'intitle:"SIMSWeb Login"'
]

# Examples #
examples %w|
66.170.137.132
65.68.166.138
simsweb.dispatchcenter.net
cmsmonitoringweb.com/SIMSWEB/
customer.vanguardalarms.com/SIMSWeb/
simsweb.grahamalarm.com
|

# Matches #
matches [

# Loading Page # Title
{ :text=>'<title>SIMSWeb Loading.....</title>' },

# Loading page # Loading message
{ :text=>'index.html"><font color="black" face="arial">Loading SIMSWeb, please wait.....</font></a></h2>' },

# JavaScript
{ :text=>'<script language="Javascript" src="/SIMSWeb/monitor.js"></script>' },

# Form HTML
{ :text=>'<form onSubmit="sendinfo(); return false;" name="LOGON">' },

]

end

