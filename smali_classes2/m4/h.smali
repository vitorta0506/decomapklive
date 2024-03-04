.class public final Lm4/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lm4/e;

.field private static volatile b:Lm4/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm4/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm4/g;-><init>(Lm4/f;)V

    sput-object v0, Lm4/h;->a:Lm4/e;

    sput-object v0, Lm4/h;->b:Lm4/e;

    return-void
.end method

.method public static a()Lm4/e;
    .locals 1

    sget-object v0, Lm4/h;->b:Lm4/e;

    return-object v0
.end method
