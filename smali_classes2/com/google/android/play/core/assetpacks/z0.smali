.class final Lcom/google/android/play/core/assetpacks/z0;
.super Lcom/google/android/play/core/assetpacks/a2;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:J

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:I

.field final h:I

.field final i:I

.field final j:J

.field final k:I

.field final l:Ljava/io/InputStream;


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/a2;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/z0;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/z0;->d:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/z0;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/z0;->f:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/play/core/assetpacks/z0;->g:I

    iput p9, p0, Lcom/google/android/play/core/assetpacks/z0;->h:I

    iput p10, p0, Lcom/google/android/play/core/assetpacks/z0;->i:I

    iput-wide p11, p0, Lcom/google/android/play/core/assetpacks/z0;->j:J

    iput p13, p0, Lcom/google/android/play/core/assetpacks/z0;->k:I

    iput-object p14, p0, Lcom/google/android/play/core/assetpacks/z0;->l:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    iget v0, p0, Lcom/google/android/play/core/assetpacks/z0;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/z0;->i:I

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
