.class Lcom/twitter/sdk/android/tweetui/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Locale;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/v$a;->a:Landroidx/collection/SparseArrayCompat;

    return-void
.end method

.method private declared-synchronized c(Landroid/content/res/Resources;I)Ljava/text/DateFormat;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/v$a;->b:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/v$a;->b:Ljava/util/Locale;

    .line 3
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/v$a;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->clear()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/v$a;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/v$a;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p1, p2, v0}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__relative_date_format_long:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/v$a;->c(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__relative_date_format_short:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/v$a;->c(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
