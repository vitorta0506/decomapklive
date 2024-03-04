.class public abstract Lmh/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh/i$a;
    }
.end annotation


# static fields
.field public static final a:Lmh/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lmh/i;->a()Lmh/i$a;

    move-result-object v0

    invoke-virtual {v0}, Lmh/i$a;->a()Lmh/i;

    move-result-object v0

    sput-object v0, Lmh/i;->a:Lmh/i;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lmh/i$a;
    .locals 2

    new-instance v0, Lmh/d$b;

    invoke-direct {v0}, Lmh/d$b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmh/d$b;->c(Z)Lmh/i$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Z
.end method

.method public abstract c()Lio/opencensus/trace/Status;
.end method
