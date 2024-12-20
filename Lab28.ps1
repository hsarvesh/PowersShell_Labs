#Format and display a list of users with specific properties

$process_Details = get-process
$process_details  | ?{$_.name -eq 'svchost'} | Measure-Object 
$process_Details | format-list
$process_details  | ?{$_.name -eq 'svchost'} | format-list
$process_details  | ?{$_.name -eq 'svchost' -and $_.Company -like "Microsoft*"} | format-list * 
