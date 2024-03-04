.class public abstract Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/c$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lw0/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw0/c;-><init>()V

    return-void
.end method

.method public static a()Lw0/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lw0/c$b;

    invoke-direct {v0}, Lw0/c$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract b(Z)V
.end method

.method public abstract c()V
.end method
