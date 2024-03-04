.class Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;->Z0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$d;->b:Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity;

    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/chat/activity/DoodleActivity$d;->a:Z

    return p1
.end method
