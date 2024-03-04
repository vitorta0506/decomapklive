.class final Ly1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Ly1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly1/d;

    invoke-direct {v0}, Ly1/d;-><init>()V

    sput-object v0, Ly1/d$a;->a:Ly1/d;

    return-void
.end method

.method static synthetic a()Ly1/d;
    .locals 1

    sget-object v0, Ly1/d$a;->a:Ly1/d;

    return-object v0
.end method
