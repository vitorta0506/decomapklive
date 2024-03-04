.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;

.field public final synthetic b:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;

    iput-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;->b:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;->a:Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/f;->b:Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/personal/invite/InviteFriendMakeMoneyWebActivity;Lcom/guochao/faceshow/aaspring/beans/InviteWebBean;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
