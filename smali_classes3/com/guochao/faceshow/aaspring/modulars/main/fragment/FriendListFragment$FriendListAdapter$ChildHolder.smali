.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014R\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u0012\"\u0004\u0008 \u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;",
        "g",
        "",
        "c",
        "(II)V",
        "flag",
        "Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;",
        "getFlag",
        "()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;",
        "setFlag",
        "(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V",
        "headView",
        "getHeadView",
        "setHeadView",
        "name",
        "Landroid/widget/TextView;",
        "getName",
        "()Landroid/widget/TextView;",
        "setName",
        "(Landroid/widget/TextView;)V",
        "onlineState",
        "Landroid/widget/ImageView;",
        "getOnlineState",
        "()Landroid/widget/ImageView;",
        "setOnlineState",
        "(Landroid/widget/ImageView;)V",
        "status",
        "getStatus",
        "setStatus",
        "userSign",
        "getUserSign",
        "setUserSign",
        "app_GooglePlayRelease"
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
.field private flag:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headView:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private name:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onlineState:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private userSign:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getFlag()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->flag:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    return-object v0
.end method

.method public final getHeadView()Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->headView:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    return-object v0
.end method

.method public final getName()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getOnlineState()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->onlineState:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getStatus()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->status:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getUserSign()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->userSign:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setFlag(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->flag:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    return-void
.end method

.method public final setHeadView(Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;)V
    .locals 0
    .param p1    # Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->headView:Lcom/guochao/faceshow/aaspring/views/NewCircleImageView;

    return-void
.end method

.method public final setName(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->name:Landroid/widget/TextView;

    return-void
.end method

.method public final setOnlineState(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->onlineState:Landroid/widget/ImageView;

    return-void
.end method

.method public final setStatus(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->status:Landroid/widget/TextView;

    return-void
.end method

.method public final setUserSign(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ChildHolder;->userSign:Landroid/widget/TextView;

    return-void
.end method
