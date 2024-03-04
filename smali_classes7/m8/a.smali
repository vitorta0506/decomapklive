.class public final synthetic Lm8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8/a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lm8/a;->a:Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;

    invoke-static {v0, p1, p2, p3}, Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;->b0(Lcom/guochao/faceshow/aaspring/modulars/chat/search/activity/SearchUserActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
