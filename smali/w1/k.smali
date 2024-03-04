.class public abstract Lw1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(JLn1/o;Ln1/i;)Lw1/k;
    .locals 1

    new-instance v0, Lw1/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lw1/b;-><init>(JLn1/o;Ln1/i;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ln1/i;
.end method

.method public abstract c()J
.end method

.method public abstract d()Ln1/o;
.end method
