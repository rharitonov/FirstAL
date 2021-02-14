pageextension 80001 "Customer List" extends "Customer List"
{
    actions
    {
        addlast(reporting)
        {
            action(ShowCustList)
            {
                Image = CustomerLedger;
                CaptionML = ENU = 'Blocked Customer List',
                            RUS = 'Список заблокированных клиентов';
                trigger OnAction()
                begin
                    report.RunModal(report::"Blocked Customer List");
                end;
            }
        }
    }
}