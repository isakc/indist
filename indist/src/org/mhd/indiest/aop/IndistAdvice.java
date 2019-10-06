package org.mhd.indiest.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;

@Aspect
public class IndistAdvice {

	@Around(value="execution(* org.mhd.indist.controller..*.*(..))")
	public Object aop(ProceedingJoinPoint pjp) throws Throwable{
		Signature signature = pjp.getSignature();
		Object result = pjp.proceed();
		return result;
	}//aop() end
}
