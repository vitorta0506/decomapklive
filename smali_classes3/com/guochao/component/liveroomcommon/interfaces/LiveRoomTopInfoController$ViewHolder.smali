.class public final Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;",
        "",
        "nickName",
        "Landroid/widget/TextView;",
        "liveRoomId",
        "avatar",
        "Landroid/widget/ImageView;",
        "(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V",
        "getAvatar",
        "()Landroid/widget/ImageView;",
        "getLiveRoomId",
        "()Landroid/widget/TextView;",
        "getNickName",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final avatar:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final liveRoomId:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nickName:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "nickName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->nickName:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->liveRoomId:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->avatar:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getAvatar()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->avatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getLiveRoomId()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->liveRoomId:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNickName()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/liveroomcommon/interfaces/LiveRoomTopInfoController$ViewHolder;->nickName:Landroid/widget/TextView;

    return-object v0
.end method
