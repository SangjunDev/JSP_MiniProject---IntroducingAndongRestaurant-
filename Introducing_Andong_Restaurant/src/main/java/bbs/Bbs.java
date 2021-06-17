package bbs;

import java.sql.Timestamp;

public class Bbs {
		private int bbsID;
		private String bbsTitle;
		private String userID;
		private Timestamp bbsDate;
		private String bbsContent;
		private int bbsAvailable;
		
		public String getBbsTitle() {
			return bbsTitle;
		}
		public void setBbsTitle(String bbsTitle) {
			this.bbsTitle = bbsTitle;
		}
		public int getBbsID() {
			return bbsID;
		}
		public void setBbsID(int bbsID) {
			this.bbsID = bbsID;
		}
		public String getUserID() {
			return userID;
		}
		public void setUserID(String userID) {
			this.userID = userID;
		}
		
		public String getBbsContent() {
			return bbsContent;
		}
		public void setBbsContent(String bbsContent) {
			this.bbsContent = bbsContent;
		}
		public int getBbsAvailable() {
			return bbsAvailable;
		}
		public void setBbsAvailable(int bbsAvailable) {
			this.bbsAvailable = bbsAvailable;
		}
		public Timestamp getBbsDate() {
			return bbsDate;
		}
		public void setBbsDate(Timestamp bbsDate) {
			this.bbsDate = bbsDate;
		}
		
}