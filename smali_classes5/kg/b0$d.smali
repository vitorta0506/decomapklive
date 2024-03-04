.class final Lkg/b0$d;
.super Lkg/b0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkg/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkg/b0$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    sget-object v0, Lkg/v$d;->a:Lkg/v$d;

    invoke-direct {p0, p1, v0}, Lkg/b0$b;-><init>(ILkg/v$d;)V

    return-void
.end method


# virtual methods
.method protected f(Lkg/w;Ljava/nio/ByteBuffer;JLkg/c0;ILkg/b0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkg/w<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lkg/c0<",
            "TT;>;I",
            "Lkg/b0;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-wide v3, p3

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lkg/w;->n(Lkg/c0;Ljava/nio/ByteBuffer;JILkg/b0;)V

    return-void
.end method
