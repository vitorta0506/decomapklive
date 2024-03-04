.class final Lxh/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lvh/d<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lxh/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
