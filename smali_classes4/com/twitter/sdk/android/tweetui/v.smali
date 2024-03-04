.class final Lcom/twitter/sdk/android/tweetui/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/v$a;
    }
.end annotation


# static fields
.field static final a:Ljava/text/SimpleDateFormat;

.field static final b:Lcom/twitter/sdk/android/tweetui/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE MMM dd HH:mm:ss Z yyyy"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/v;->a:Ljava/text/SimpleDateFormat;

    .line 2
    new-instance v0, Lcom/twitter/sdk/android/tweetui/v$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/v$a;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/v;->b:Lcom/twitter/sdk/android/tweetui/v$a;

    return-void
.end method

.method static a(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    sget-object v2, Lcom/twitter/sdk/android/tweetui/v;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u2022 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 9

    sub-long v0, p1, p3

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    const-wide/16 p1, 0x3e8

    .line 1
    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 2
    sget p2, Lcom/twitter/sdk/android/tweetui/R$plurals;->tw__time_secs:I

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 v6, 0x36ee80

    cmp-long v8, v0, v6

    if-gez v8, :cond_1

    .line 3
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 4
    sget p2, Lcom/twitter/sdk/android/tweetui/R$plurals;->tw__time_mins:I

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v2, 0x5265c00

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    .line 5
    div-long/2addr v0, v6

    long-to-int p1, v0

    .line 6
    sget p2, Lcom/twitter/sdk/android/tweetui/R$plurals;->tw__time_hours:I

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 11
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    .line 12
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result p3

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne p3, p1, :cond_3

    .line 13
    sget-object p1, Lcom/twitter/sdk/android/tweetui/v;->b:Lcom/twitter/sdk/android/tweetui/v$a;

    invoke-virtual {p1, p0, p2}, Lcom/twitter/sdk/android/tweetui/v$a;->b(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 14
    :cond_3
    sget-object p1, Lcom/twitter/sdk/android/tweetui/v;->b:Lcom/twitter/sdk/android/tweetui/v$a;

    invoke-virtual {p1, p0, p2}, Lcom/twitter/sdk/android/tweetui/v$a;->a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_4
    sget-object p1, Lcom/twitter/sdk/android/tweetui/v;->b:Lcom/twitter/sdk/android/tweetui/v$a;

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p0, p2}, Lcom/twitter/sdk/android/tweetui/v$a;->a(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/v;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
