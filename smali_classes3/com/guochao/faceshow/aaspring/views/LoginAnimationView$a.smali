.class Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$a;
.super Landroid/view/animation/DecelerateInterpolator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/LoginAnimationView$a;->a:Lcom/guochao/faceshow/aaspring/views/LoginAnimationView;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    invoke-super {p0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
