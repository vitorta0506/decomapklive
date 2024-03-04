.class public abstract Lhh/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhh/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Lhh/y;Lhh/y;)Lhh/a0;
    .locals 1

    new-instance v0, Lhh/l;

    invoke-direct {v0, p0, p1, p2}, Lhh/l;-><init>(Ljava/lang/String;Lhh/y;Lhh/y;)V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Lhh/y;
.end method

.method public abstract d()Lhh/y;
.end method
