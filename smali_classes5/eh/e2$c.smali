.class final Leh/e2$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final a:Leh/e2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Leh/e2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leh/e2;-><init>(Leh/e2$a;)V

    sput-object v0, Leh/e2$c;->a:Leh/e2;

    return-void
.end method

.method static synthetic a()Leh/e2;
    .locals 1

    sget-object v0, Leh/e2$c;->a:Leh/e2;

    return-object v0
.end method
