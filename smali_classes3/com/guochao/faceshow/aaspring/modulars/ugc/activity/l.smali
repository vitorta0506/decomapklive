.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhb/b;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;->b:Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    return-void
.end method


# virtual methods
.method public synthetic onFail(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lhb/a;->a(Lhb/b;Ljava/lang/Object;)V

    return-void
.end method

.method public final onResponse(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;->a:Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/l;->b:Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;->e0(Lcom/guochao/faceshow/aaspring/modulars/ugc/activity/RelatedUserMoreActivity;Lcom/guochao/faceshow/aaspring/beans/SearchUserNameOrIdBean;Ljava/lang/String;)V

    return-void
.end method
