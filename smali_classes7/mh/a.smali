.class public abstract Lmh/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmh/a$a;,
        Lmh/a$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Lmh/a;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Lmh/a$a;->c(Ljava/lang/Long;)Lmh/a;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lmh/a;
    .locals 0

    invoke-static {p0}, Lmh/a$b;->c(Ljava/lang/String;)Lmh/a;

    move-result-object p0

    return-object p0
.end method
