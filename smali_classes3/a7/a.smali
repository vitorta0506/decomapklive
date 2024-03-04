.class public final synthetic La7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V
    .locals 2
    .param p1    # Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "gcLiveRoomUserInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;->getViewHolder()Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->getLiveRoomId()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->getAvatar()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 5
    invoke-static {p0}, Lcom/bumptech/glide/c;->v(Landroid/view/View;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->r(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/g;->Q0(Landroid/widget/ImageView;)Ls0/l;

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V
    .locals 0

    invoke-static {p0, p1}, La7/a;->a(Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;Lcom/guochao/component/liveroom/model/GCLiveRoomUserInfo;)V

    return-void
.end method
