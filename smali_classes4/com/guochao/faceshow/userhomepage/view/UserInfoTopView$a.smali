.class Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;->setInRoom(Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

.field final synthetic b:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    iput-object p2, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>()V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    invoke-virtual {v2}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineRoomId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setRoomId(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    invoke-virtual {v3}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineRoomId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setUserId(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineRoomId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setId(I)V

    .line 6
    iget-object v1, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->a:Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;

    invoke-virtual {v1}, Lcom/guochao/faceshow/bean/UserVoiceRoomInfoBean;->getUserOnlineImGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->setChatGroupId(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView$a;->b:Lcom/guochao/faceshow/userhomepage/view/UserInfoTopView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/guochao/component/voiceliveroom/helper/VoiceRoomMiniHelper;->gotoVoiceRoom(Landroid/content/Context;ILjava/util/ArrayList;)V

    return-void
.end method
