package soldesk.MVCModelBoard;


//writingrequest�� ��ӹ޾� �������̵��Ͽ� ����Ѵ�
public class ReplyingRequest extends WritingRequest{ 
	private int parentArticleId; //�亯�ۿ��� ���� �ڹٺ� �θ���� �ٹ� ������ �ϳ� �ʿ���
	
	public int getParentArticleId() {
		return parentArticleId;
	}
	public void setParentArticleId(int parentArticleId) {
		this.parentArticleId = parentArticleId;
	}

}
