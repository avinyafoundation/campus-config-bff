public type ActivityParticipantAttendance record {
    int? activity_instance_id?;
    string? created?;
    string? sign_in_time?;
    int? id?;
    string? updated?;
    string? record_type?;
    int? person_id?;
    string? sign_out_time?;
};

public type Address record {
    string street_address?;
    string? name_ta?;
    int? phone?;
    string? name_si?;
    int? id?;
    string? record_type?;
    int city_id?;
    string name_en?;
};

public type ApplicantConsent record {
    string? date_of_birth?;
    string? created?;
    int? avinya_type_id?;
    boolean? agree_terms_consent?;
    boolean? active?;
    boolean? done_ol?;
    int? application_id?;
    int? ol_year?;
    string? record_type?;
    boolean? information_correct_consent?;
    int? phone?;
    int? organization_id?;
    string? name?;
    int? id?;
    int? distance_to_school?;
    string? updated?;
    string? email?;
    int? person_id?;
};

public type Application record {
    int? vacancy_id?;
    string? application_date?;
    int? id?;
    string? record_type?;
    int? person_id?;
};

public type Evaluation record {
    int[]? parent_evaluations?;
    int? activity_instance_id?;
    string? notes?;
    int? evaluatee_id?;
    int? evaluation_criteria_id?;
    string? response?;
    int[]? child_evaluations?;
    int? evaluator_id?;
    int? grade?;
    int? id?;
    string? updated?;
    string? record_type?;
};

public type Organization record {
    int[]? parent_organizations?;
    string? name_ta?;
    int[]? child_organizations?;
    int? phone?;
    int? address_id?;
    string? name_si?;
    int? avinya_type?;
    int? id?;
    string? record_type?;
    string name_en?;
};

public type Person record {
    int? permanent_address_id?;
    string? notes?;
    string? date_of_birth?;
    string? sex?;
    int? avinya_type_id?;
    string? passport_no?;
    Address? permanent_address?;
    string? record_type?;
    int? mailing_address_id?;
    Address? mailing_address?;
    string? full_name?;
    string? nic_no?;
    string? id_no?;
    int? phone?;
    string? jwt_email?;
    int? organization_id?;
    int? id?;
    string? asgardeo_id?;
    string? preferred_name?;
    string? jwt_sub_id?;
    string? email?;
};

public type Prospect record {
    string? street_address?;
    boolean? contacted?;
    boolean? applied?;
    string? created?;
    string? date_of_birth?;
    boolean? agree_terms_consent?;
    boolean? verified?;
    boolean? active?;
    boolean? receive_information_consent?;
    boolean? done_ol?;
    int? ol_year?;
    string? record_type?;
    int? phone?;
    string? name?;
    int? id?;
    int? distance_to_school?;
    string? updated?;
    string? email?;
};

public type AvinyaType record{|
    int id?;
    boolean active?;
    string global_type?;
    string? name?;
    string? foundation_type?;
    string? focus?;
    int? level?;
|};

public type GetAvinyaTypesResponse record {|
    map<json?> __extensions?;
    record {|
        int? id;
        boolean active;
        string? name;
        string global_type;
        string? foundation_type;
        string? focus;
        int? level;
    |}[] avinya_types;
|};
