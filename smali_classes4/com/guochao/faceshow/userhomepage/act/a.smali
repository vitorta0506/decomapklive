.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

.field public final synthetic b:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/a;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/a;->b:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/a;->a:Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/a;->b:Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;->P1(Lcom/guochao/faceshow/aaspring/beans/UserPageBaseData;Lcom/guochao/faceshow/userhomepage/act/UserAboutMeFragment;Landroid/view/View;)V

    return-void
.end method
