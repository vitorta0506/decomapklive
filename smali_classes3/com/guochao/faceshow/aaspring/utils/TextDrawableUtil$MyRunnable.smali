.class public abstract Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$MyRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MyRunnable"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$MyRunnable;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$MyRunnable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/utils/TextDrawableUtil$MyRunnable;->run(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract run(Landroid/graphics/drawable/Drawable;)V
.end method
