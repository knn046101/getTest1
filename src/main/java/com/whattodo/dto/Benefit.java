package com.whattodo.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Benefit {
	private String benefitNo;
	private String benefitTItle;
	private Date startDate;
	private Date endDate;
	private String place;
	private String adminId;
}
