.class public final synthetic Lcom/guochao/faceshow/userhomepage/act/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

.field public final synthetic b:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/act/l;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/act/l;->b:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/act/l;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/act/l;->b:Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;

    invoke-static {v0, v1, p1}, Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;->l0(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;Lcom/guochao/faceshow/userhomepage/act/UserHomePageAct;Landroid/view/View;)V

    return-void
.end method
