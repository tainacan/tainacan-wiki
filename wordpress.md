# How to install WordPress on windows #

## Downloading ##

To start, let's go to https://www.wordpress.org/download/ and download **wordpress** for **windows**.

![](/_assets/images/wordpress_01.png)

In the figure above, click on **Download WordPress 5.2.2** to download. At the end of the process, we will start the installation by unpacking the downloaded file.

<br><br>

![](/_assets/images/wordpress_02.png)
**Unpacking**

Right-click on the compressed file and then click **Extract All...**. Wait for the unpacking to finish.

<br><br>

![](/_assets/images/wordpress_03.png)

Open the unzipped folder, right-click on the **wordpress** folder, and then click **Copy**.

<br><br>

![](/_assets/images/wordpress_04.png)

Now go to `C:/xampp/htdocs`, right-click inside the folder and then click **Paste**.

<br><br>

![](/_assets/images/wordpress_05.png)

See in the image above the folder with the transfer process completed.

<br><br>

![](/_assets/images/wordpress_06.png)

Now, for this project, we will change the name of the **wordpress** folder to **project_test**. Feel free to put the name you like most in this folder, preferably the name of the project you are creating.

<br><br>

## Creating a new database ##

![](/_assets/images/wordpress_07.png)

OK. **Wordpress** has already been renamed and is in the right place. Now you have to configure it. To do this, we need to create a database that will be used by it. So open a new tab in your browser and type `localhost/phpmyadmin`.

<br><br>

![](/_assets/images/wordpress_08.png)

This is the **phpmyadmin** screen. Here you can change the databases used in the projects contained in **XAMPP**. Be careful to not cause damage here. To create a new bank, click the **New** button in the list on the left.

<br><br>

![](/_assets/images/wordpress_09.png)

On this screen, enter the database name in the **Database name** field. For this example, we will use the name **bank_test**, but you can put the name you like, preferably the name of the project you are creating. When you are finished typing, click the **Create** button.

<br><br>

![](/_assets/images/wordpress_10.png)

This screen shows that the database has been created and is empty. Notice its name in the list on the left.

<br><br>

## Connecting the bank to the project ##

![](/_assets/images/wordpress_11.png)

Now we will open a new tab, at the following address: `localhost/project_test`  
As it is the first time we open the site, it will perform the latest settings.

<br><br>

![](/_assets/images/wordpress_12.png)

Since we have created the database, we can click on **Let's go!** to continue the installation.

<br><br>

![](/_assets/images/wordpress_13.png)

On this screen, you must enter the following information:
1. The name of the **bank** you just created;
2. The **username** used to access the bank. **Xampp** normally uses **root** as username.
3. The **password** used to access the bank. **Xampp** usually leaves the password blank.
4. **Database Host** and **Table Prefix** do not need to be changed.

<br><br>

![](/_assets/images/wordpress_14.png)

In our case, the data is as shown in the image above. At the end, click on the **Submit** button at the bottom of the page.

<br><br>

![](/_assets/images/wordpress_15.png)

This screen says that this part of the installation is complete. Click on the **Run the installation** button, as shown above.

<br><br>

## Latest Information ##

![](/_assets/images/wordpress_16.png)

If all goes well, this screen will appear. Here you will define data such as **Site Title**, **Username** and **Password** that will be used to access the **Control Panel** (**admin**), **e-mail** from the site administrator and **visibility** option on sites such as **google**. Enter all the fields as you think better, and then click on **Install Wordpress** at the bottom of the page.

<br><br>

![](/_assets/images/wordpress_17.png)

OK, all ready. **Wordpress** is now installed. Click **Log in** to view the site.

<br><br>

## The admin ##

![](/_assets/images/wordpress_18.png)

The login screen of the **Control Panel** will appear, as in the image above. Enter the **username** you have chosen and the **password** to access.

<br><br>

![](/_assets/images/wordpress_19.png)

This is the **Wordpress Control Panel**. Everything on the site can be changed in the options in this panel. To view the site, click on the chosen title at the top left, as marked in the image above.

<br><br>

![](/_assets/images/wordpress_20.png)
**The Wordpress home**

That's it. In the next times, if you prefer to access the site directly, just visit the address `localhost/project_test` (or the name chosen). To access the **Control Panel** directly, simply visit the address `localhost/project_test/wp-admin` (or the chosen name instead of **project_test**)

Now we can begin to install the [Tainacan](tainacan#how-to-install-the-tainacan-plugin-on-wordpress).

<br><br>