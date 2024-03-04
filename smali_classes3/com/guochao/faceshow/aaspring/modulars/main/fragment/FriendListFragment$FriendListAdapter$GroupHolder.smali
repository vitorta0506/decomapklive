.class public final Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;
.super Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000f\"\u0004\u0008\u0014\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;",
        "Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$ViewInfo;",
        "g",
        "",
        "c",
        "(II)V",
        "expandStatus",
        "Landroid/widget/ImageView;",
        "getExpandStatus",
        "()Landroid/widget/ImageView;",
        "setExpandStatus",
        "(Landroid/widget/ImageView;)V",
        "name",
        "Landroid/widget/TextView;",
        "getName",
        "()Landroid/widget/TextView;",
        "setName",
        "(Landroid/widget/TextView;)V",
        "number",
        "getNumber",
        "setNumber",
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
.field private expandStatus:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private name:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private number:Landroid/widget/TextView;
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
.method public final getExpandStatus()Landroid/widget/ImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->expandStatus:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getName()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getNumber()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->number:Landroid/widget/TextView;

    return-object v0
.end method

.method public final setExpandStatus(Landroid/widget/ImageView;)V
    .locals 0
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->expandStatus:Landroid/widget/ImageView;

    return-void
.end method

.method public final setName(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->name:Landroid/widget/TextView;

    return-void
.end method

.method public final setNumber(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment$FriendListAdapter$GroupHolder;->number:Landroid/widget/TextView;

    return-void
.end method
