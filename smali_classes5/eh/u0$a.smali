.class public abstract Leh/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/u0;
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

.method static b(Ljava/lang/String;Leh/u0$b;)Leh/u0$a;
    .locals 1

    new-instance v0, Leh/g;

    invoke-direct {v0, p0, p1}, Leh/g;-><init>(Ljava/lang/String;Leh/u0$b;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Leh/u0$b;
.end method

.method abstract c()Ljava/lang/String;
.end method
