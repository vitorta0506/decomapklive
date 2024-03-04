.class public abstract Lcom/google/android/play/core/assetpacks/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/assetpacks/i0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/play/core/assetpacks/i0;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/a;->a:Lcom/google/android/play/core/assetpacks/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
