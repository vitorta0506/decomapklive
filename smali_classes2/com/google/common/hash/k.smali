.class public final Lcom/google/common/hash/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    sput v1, Lcom/google/common/hash/k;->a:I

    return-void
.end method

.method public static a()Lcom/google/common/hash/i;
    .locals 1

    sget-object v0, Lcom/google/common/hash/p;->b:Lcom/google/common/hash/i;

    return-object v0
.end method
