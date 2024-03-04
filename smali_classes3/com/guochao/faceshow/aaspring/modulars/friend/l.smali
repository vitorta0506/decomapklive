.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/l;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/l;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;->g0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendGroupMangerActivity;Ljava/util/List;)V

    return-void
.end method
