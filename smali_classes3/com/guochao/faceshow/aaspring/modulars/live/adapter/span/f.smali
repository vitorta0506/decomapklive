.class public abstract Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;
.super Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;
.source "SourceFile"


# instance fields
.field protected mTextViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public bindTextView(Landroid/widget/TextView;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/live/adapter/span/f;->mTextViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method
