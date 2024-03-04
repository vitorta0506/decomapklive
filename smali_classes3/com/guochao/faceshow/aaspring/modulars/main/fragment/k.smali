.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/fragment/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/k;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/k;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->U1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Ljava/util/List;)V

    return-void
.end method
