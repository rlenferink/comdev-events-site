package path;

# All our pages use the same view function
our @patterns = (
    [qr!^/.*\.html$!,   normal_page => {} ],
    [qr!^/.*barcamp-dc.*\.mdtext$!, normal_page => { template=>"standard_dc_markdown.html" } ],
    [qr!^/.*barcamp-bos.*\.mdtext$!, normal_page => { template=>"standard_bos_markdown.html" } ],
    [qr!^/.*\.mdtext$!, normal_page => { template=>"standard_markdown.html" } ],
    [qr!^/.*\.redirect$!, redirect => {} ],
);

# for specifying interdependencies between files
our %dependencies = ();

1;

=head1 LICENSE

           Licensed to the Apache Software Foundation (ASF) under one
           or more contributor license agreements.  See the NOTICE file
           distributed with this work for additional information
           regarding copyright ownership.  The ASF licenses this file
           to you under the Apache License, Version 2.0 (the
           "License"); you may not use this file except in compliance
           with the License.  You may obtain a copy of the License at

             http://www.apache.org/licenses/LICENSE-2.0

           Unless required by applicable law or agreed to in writing,
           software distributed under the License is distributed on an
           "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
           KIND, either express or implied.  See the License for the
           specific language governing permissions and limitations
           under the License.

