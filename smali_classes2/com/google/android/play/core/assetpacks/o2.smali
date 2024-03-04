.class final Lcom/google/android/play/core/assetpacks/o2;
.super Lcom/google/android/play/core/assetpacks/a2;
.source "SourceFile"


# instance fields
.field final c:I

.field final d:J

.field final e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/lang/String;IJLjava/lang/String;)V
    .locals 0
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/assetpacks/a2;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lcom/google/android/play/core/assetpacks/o2;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/o2;->d:J

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/o2;->e:Ljava/lang/String;

    return-void
.end method
