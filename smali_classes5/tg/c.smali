.class public final Ltg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltg/c$b;
    }
.end annotation


# static fields
.field private static final a:Ltg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltg/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltg/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltg/c$b;-><init>(Ltg/c$a;)V

    sput-object v0, Ltg/c;->a:Ltg/e;

    return-void
.end method

.method public static a()Ltg/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ltg/e<",
            "TV;>;"
        }
    .end annotation

    sget-object v0, Ltg/c;->a:Ltg/e;

    return-object v0
.end method
