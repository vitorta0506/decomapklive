.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/friend/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/o;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/friend/o;->a:Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;->d0(Lcom/guochao/faceshow/aaspring/modulars/friend/FriendSetGroupActivity;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method