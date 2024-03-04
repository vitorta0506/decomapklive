.class final Lig/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lig/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lig/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lig/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lig/b$b;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
