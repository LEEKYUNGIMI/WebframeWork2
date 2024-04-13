package kr.ac.hansung.cse.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Credit {
    private String course_code;

    @Positive(message = "Year must be a positive number")
    private int year;

    @Positive(message = "Semester must be a positive number")
    private int semester;

    @NotEmpty(message = "Course name cannot be empty")
    @Size(min = 2, max = 100, message = "Course name must be between 2 and 100 characters")
    private String course_name;

    @NotEmpty(message = "Course type cannot be empty")
    private String course_type;

    @NotEmpty(message = "Instructor name cannot be empty")
    private String instructor;

    @Positive(message = "Credit must be a positive number")
    private int credit;

    private int totalCredit;


}
