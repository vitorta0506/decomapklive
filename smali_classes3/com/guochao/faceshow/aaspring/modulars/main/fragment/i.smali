.class public final synthetic Lcom/guochao/faceshow/aaspring/modulars/main/fragment/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/i;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/i;->a:Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;->S1(Lcom/guochao/faceshow/aaspring/modulars/main/fragment/FriendListFragment;Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result p1

    return p1
.end method
