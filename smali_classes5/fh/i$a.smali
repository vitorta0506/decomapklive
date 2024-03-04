.class public abstract Lfh/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfh/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JJ)Lfh/i$a;
    .locals 1

    new-instance v0, Lfh/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lfh/d;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()J
.end method
