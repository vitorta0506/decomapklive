.class Leh/f2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Leh/f2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leh/f2;

    invoke-direct {v0}, Leh/f2;-><init>()V

    sput-object v0, Leh/f2$b;->a:Leh/f2;

    return-void
.end method

.method static synthetic a()Leh/f2;
    .locals 1

    sget-object v0, Leh/f2$b;->a:Leh/f2;

    return-object v0
.end method
