.class Lcom/previewlibrary/wight/SmoothImageView$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/previewlibrary/wight/SmoothImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:I

.field f:F

.field final synthetic g:Lcom/previewlibrary/wight/SmoothImageView;


# direct methods
.method private constructor <init>(Lcom/previewlibrary/wight/SmoothImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/previewlibrary/wight/SmoothImageView$i;->g:Lcom/previewlibrary/wight/SmoothImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/previewlibrary/wight/SmoothImageView;Lcom/previewlibrary/wight/SmoothImageView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/previewlibrary/wight/SmoothImageView$i;-><init>(Lcom/previewlibrary/wight/SmoothImageView;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/previewlibrary/wight/SmoothImageView$i;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/previewlibrary/wight/SmoothImageView$i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/previewlibrary/wight/SmoothImageView$i;->a()Lcom/previewlibrary/wight/SmoothImageView$i;

    move-result-object v0

    return-object v0
.end method
