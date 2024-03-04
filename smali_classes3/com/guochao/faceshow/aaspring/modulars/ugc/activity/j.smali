.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;->b:Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/j;->b:Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Landroid/view/View;)V

    return-void
.end method
