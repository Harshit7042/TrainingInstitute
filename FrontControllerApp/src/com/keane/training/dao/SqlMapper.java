package com.keane.training.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.keane.dbfw.ResultMapper;
import com.keane.training.domain.Admin;
import com.keane.training.domain.Article;
import com.keane.training.domain.Faculty;
import com.keane.training.domain.Feedback;
import com.keane.training.domain.Institute;
import com.keane.training.domain.Request;
import com.keane.training.domain.Response;
import com.keane.training.domain.Student;
import com.keane.training.domain.User;

public class SqlMapper {

	public static final String FETCH_USER = "select name,employeeId,technology,password from user_info where portalid=?";

	public static final ResultMapper MAP_USER = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			User user = new User();
			user.setPassword(rs.getString("password"));
			user.setEmployeeId(rs.getInt("employeeId"));
			return user;
			
		}
	};

	public static final String ADD_USER = "insert into user_info(portalid,name,employeeId,technology,password) values(?,?,?,?,?)";
	public static final String LOGININSTITUTE=
		"select iname,ipass from Institute where iname=? and ipass=?";
	public static final String INSERTSTUDENT=
		"insert into Student values(?,?,?,?,?,?,?,?)";
	public static final String LOGINSTUDENT=
		"select sid,spass from Student where sid=? and spass=?";
	public static final String UPDATESTUDENT=
		"update Student set sname=?,squal=?,scontact=?,saddr=?,semail=?,spass=? where sid=?";
	public static final String COMPLAINTSTUDENT=
		"insert into Request values(?,?,?)";
	public static final String INSERTINSTITUTE=
		"insert into Institute values(?,?,?,?,?,?,?,?)";
	public static final String UPDATEINSTITUTE=
		"update Institute set iid=?,ipass=?,affdate=?,iaddr=?,iseats=?,icourse=? where iname=?";
	public static final String FACULTYINFO=
		"insert into Faculty values(?,?,?,?)";
	public static final String STUDENTDETAILS=
		"select * from Student where iid=? ";
	public static final String INSERTADMIN=
		"insert into Admin1 values(?,?,?,?)";
	
	public static final String INSTITUTECHECK=
			"  SELECT * FROM INSTITUTE WHERE STATUS=1 AND IID=?";
	public static final String LOGINADMIN=
		"select aid,apass from Admin where aid=? and apass=?";
	public static final String STUDENTDETAILS13=
		"select * from student";
	public static final String Faculty=
		"select * from faculty where iid=?";
	public static final String STUDENTDETAILS12=
		"select * from student where iid=?";
	public static final String DELETEINSTITUTE=
		"delete from Institute where iid=?";
	public static final String VIEWINSTITUTE=
		"select * from Institute";
	public static final String INSERTSTATUS1=
		"update Institute set status=? where iid=?";
	public static final String VIEWCOMPLAINTS1=
		"select * from request";
	public static final String VIEWREQUESTS1=
		"select * from Request";
	public static final String INSERTRESPONSE1=
		"insert into Response values(?,?)";
	public static final String VIEWRESPONSE1=
		"select * from Response where sname=?";
	public static final String INSERTFEEDBACK=
		"insert into Feedback values(?,?,?,?)";
	public static final String VIEWFEEDBACK=
		"select * from Feedback ";
	public static final String VIEWFEEDBACK2=
			"select * from Feedback where iid=?";
	public static final String UPLOADARTICLE1=
		"insert into Article values(?,?,?)";
	public static final String VIEWARTICLE1=
		"select * from Article where iid=?";
	;
	
	
	
	public static final ResultMapper STUDENTMAPPER=
		new ResultMapper()
	{
		public Object mapRows(ResultSet rs) throws SQLException {
		int id=	rs.getInt(1);
		String name=rs.getString(2);
		String quali = rs.getString(3);
		String scontact =  rs.getString(4);
		String saddr =  rs.getString(5);
		String semail =  rs.getString(6);
		String spass =  rs.getString(7);
		int iid=rs.getInt(8);
		Student s=new Student(id,name,quali,scontact,saddr,semail,spass,iid);
			return s;
		//mapRow
		}
	};
	
   public static final ResultMapper INSTITUTEMAPPER=
	new ResultMapper()
    {
		
			public Object mapRows(ResultSet rs) throws SQLException {
				int iid=	rs.getInt(1);
				String iname=rs.getString(2);
				String ipass=rs.getString(3);
				String affdate=rs.getString(4);

				String iaddr=rs.getString(5);
				int iseat=rs.getInt(6);
				int icourse=rs.getInt(7);
				int status =rs.getInt(8);
				Institute s=new Institute(iid,iname,affdate,iaddr,iseat,icourse,ipass);
				return s;
			
			}
    };

    public static final ResultMapper AdminMAPPER=
		new ResultMapper()
	{
		public Object mapRows(ResultSet rs) throws SQLException {
		int aid=	rs.getInt(1);
		String aname=rs.getString(2);
		String apass = rs.getString(3);
		int iid=	rs.getInt(4);
		Admin s=new Admin(aid,aname,apass,iid);
			return s;
		//mapRow
		}
	};
public static final ResultMapper INSTITUTEMAPPER1=
	new ResultMapper()
{
	public Object mapRows(ResultSet rs) throws SQLException {
		String iname=rs.getString(1);
		String ipass=rs.getString(2);
		
		Institute i=new Institute(iname,ipass);
		return i;
		
}
};
public static final ResultMapper STUDENTEMAPPER1=
	new ResultMapper()
{
	public Object mapRows(ResultSet rs) throws SQLException {
		int sid=rs.getInt(1);
		String spass=rs.getString(2);
		
	
		Student s=new Student(sid,spass);
		return s;
}
};
public static final ResultMapper ADMINEMAPPER1=
	new ResultMapper()
{
	public Object mapRows(ResultSet rs) throws SQLException {
		int aid=rs.getInt(1);
		String apass=rs.getString(2);
		
	
		Admin a=new Admin(aid,apass);
		return a;
}
};
public static final ResultMapper STUDENTMAPPER2=
	new ResultMapper()
{
	public Object mapRows(ResultSet rs) throws SQLException {
	int sid=rs.getInt(1);
	String sname=rs.getString(2);
	String squal = rs.getString(3);
	String scontact =  rs.getString(4);
	String saddr =  rs.getString(5);
	String semail =  rs.getString(6);
	String spass =  rs.getString(7);
	Student s=new Student(sid,sname,squal,scontact,saddr,semail,spass);
		return s;
	//mapRow
	}
};
public static final ResultMapper COMPLAINTMAPPER=
	new ResultMapper()
{
	public Object mapRows(ResultSet rs) throws SQLException {
	int cid=rs.getInt(1);
	int sid=rs.getInt(2);
	int iid=rs.getInt(3);
	String complaint=rs.getString(4);
	
	Request c=new Request(cid,sid,iid,complaint);
		return c;
	//mapRow
	}
};
public static final ResultMapper INSTITUTEMAPPER2=
	new ResultMapper()
    {
		
			public Object mapRows(ResultSet rs) throws SQLException {
				int iid=rs.getInt(1);
				String iname=rs.getString(2);
				String affdate=rs.getString(3);
				String iaddr=rs.getString(4);
				int iseats=rs.getInt(5);
				int icourse=rs.getInt(6);
				String ipass=rs.getString(7);
				Institute s=new Institute(iid,iname,affdate,iaddr,iseats,icourse,ipass);
				return s;
			
			}
    };
    public static final ResultMapper INSTITUTEMAPPER3=
    	new ResultMapper()
        {
    		
    			public Object mapRows(ResultSet rs) throws SQLException {
    				int fid=rs.getInt(1);
    				String fname=rs.getString(2);
    				String dept=rs.getString(3);
    				int iid=rs.getInt(4);
    				Faculty f=new Faculty(fid,fname,dept,iid);
    				return f;
    			
    			}
        };
        public static final ResultMapper ADMINMAPPER3=
        	new ResultMapper()
            {
        		
        			public Object mapRows(ResultSet rs) throws SQLException {
        				int iid=rs.getInt(1);
        				
        					
        				Admin a=new Admin(iid);
        				return a;
        			
        			}
            };
            public static final ResultMapper STUDENTDETAILS1=
            	new ResultMapper()
                {
            		
            			public Object mapRows(ResultSet rs) throws SQLException {
            				int id=	rs.getInt(1);
            				String name=rs.getString(2);
            				String quali = rs.getString(3);
            				String scontact =  rs.getString(4);
            				String saddr =  rs.getString(5);
            				String semail =  rs.getString(6);
            				String spass =  rs.getString(7);
            				int iid=rs.getInt(8);
            				Student s=new Student(id,name,quali,scontact,saddr,semail,spass,iid);
            					return s;
            			
            			}
                };
                public static final ResultMapper STUDENTDETAILS2=
                	new ResultMapper()
                    {
                		
                			public Object mapRows(ResultSet rs) throws SQLException {
                				int id=	rs.getInt(1);
                				String name=rs.getString(2);
                				String quali = rs.getString(3);
                				String scontact =  rs.getString(4);
                				String saddr =  rs.getString(5);
                				String semail =  rs.getString(6);
                				String spass =  rs.getString(7);
                				int iid=rs.getInt(8);
                				Student s=new Student(id,name,quali,scontact,saddr,semail,spass,iid);
                					return s;
                			
                			}
                    };
                    public static final ResultMapper VIEWINSTITUTE1=
                    	new ResultMapper()
                        {
                    		
                    			public Object mapRows(ResultSet rs) throws SQLException {
                    				int iid=rs.getInt(1);
                    				String iname=rs.getString(2);
                    				String ipass=rs.getString(3);
                    				String affdate=rs.getString(4);
                    				String iaddr=rs.getString(5);
                    				int iseats=rs.getInt(6);
                    				int icourse=rs.getInt(7);
                    				
                    				Institute i=new Institute(iid,iname,ipass,affdate,iaddr,iseats,icourse);
                    				return i;
                    			
                    			}
                        };    
                        public static final ResultMapper INSERTSTATUS=
                        	new ResultMapper()
                            {
                        		
                        			public Object mapRows(ResultSet rs) throws SQLException {
                        				int iid=rs.getInt(1);
                        				int status=rs.getInt(8);
                        				
                        					
                        				Institute i=new Institute(iid,status);
                        				return i;
                        			
                        			}
                            };
                            public static final ResultMapper VIEWCOMPLAINTS=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int cid=rs.getInt(1);
                            	int sid=rs.getInt(2);
                            	int iid=rs.getInt(3);
                            	String request=rs.getString(4);
                            	
                            	Request r=new Request(cid,sid,iid,request);
                            		return r;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper VIEWREQUESTS=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	String sname=rs.getString(1);
                            	String squal=rs.getString(2);
                            	int marks=rs.getInt(3);
                            	
                            	
                            	Request r=new Request(sname,squal,marks);
                            		return r;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper INSERTRESPONSE=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int iid=rs.getInt(3);
                            	int sid=rs.getInt(2);
                            	String response=rs.getString(5);
                            	
                            	Request r=new Request(iid,sid,response);
                            		return r;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper VIEWRESPONSE=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	String sname=rs.getString(1);
                            	String response=rs.getString(2);
                            	
                            	
                            	
                            	Student r1=new Student(sname,response);
                            		return r1;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper INSERTFEEDBACK1=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int cid=rs.getInt(1);
                            	int sid=rs.getInt(3);
                            	int iid=rs.getInt(2);
                            	String feedback=rs.getString(4);
                            	
                            	Request r=new Request(cid,sid,iid,feedback);
                            		return r;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper VIEWFEEDBACK1=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int cid=rs.getInt(1);
                            	int sid=rs.getInt(3);
                            	int iid=rs.getInt(2);
                            	String feedback=rs.getString(4);
                            	
                            	Feedback f=new Feedback(cid,sid,iid,feedback);
                            		return f;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper UPLOADARTICLE=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int aid=rs.getInt(1);
                            	int iid=rs.getInt(2);
                            	String article=rs.getString(3);
                            	
                            	Article a=new Article(aid,iid,article);
                            		return a;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper VIEWARTICLE=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int aid=rs.getInt(1);
                            	int iid=rs.getInt(2);
                            	String article=rs.getString(3);
                            	
                            	Article a=new Article(aid,iid,article);
                            		return a;
                            	//mapRow
                            	}
                            };
                            public static final ResultMapper VIEWFACULTY=
                            	new ResultMapper()
                            {
                            	public Object mapRows(ResultSet rs) throws SQLException {
                            	int fid=rs.getInt(1);
                            	String fdept=rs.getString(3);
                            	String fname=rs.getString(2);
                            	int iid=rs.getInt(4);
                            	Faculty a=new Faculty(fid,fname,fdept,iid);
                            		return a;
                            	//mapRow
                            	}
                            };
                            
                            public static final ResultMapper CHECKMAPPER=
                        			new ResultMapper()
                        	{
                        		public Object mapRows(ResultSet rs) throws SQLException {
                        			
                        			String iname=rs.getString(2);
                        			String ipass=rs.getString(3);
                        			Institute a=new Institute(iname,ipass);
                        			return a;
                        		}//mapRow

                        	};

                         
}

//create table user_info(name varchar2(20),employeeId int,technology varchar2(20),password varchar2(20),portalid int)

